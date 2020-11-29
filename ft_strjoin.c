/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maearly <maearly@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/29 13:24:28 by maearly           #+#    #+#             */
/*   Updated: 2020/10/30 19:29:43 by maearly          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*buf;
	int		i;
	int		k;

	if (!s1 || !s2)
		return (NULL);
	buf = (char *)malloc(sizeof(char) * (ft_strlen(s1) + ft_strlen(s2)) + 1);
	if (NULL == buf)
		return (NULL);
	i = 0;
	while (i < (int)ft_strlen(s1))
	{
		buf[i] = s1[i];
		i++;
	}
	k = 0;
	while (k < (int)ft_strlen(s2))
	{
		buf[i] = s2[k];
		i++;
		k++;
	}
	buf[i] = '\0';
	return (buf);
}
